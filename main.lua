-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Require the built-in Physics module and start simulation
local physics = require( "physics" )
physics.start() 

-- Create new particle system with name of texture file that will be used for each indvidual particle instance. 
-- Radius defines the radius of the physical body for each generated particle. 
-- Image radius if is defined, defines that particle image will be rendered at a different radius than the physical body.
local particleSystem = physics.newParticleSystem(
  {
  filename = "images/particle.png",
  radius = 24,
  imageRadius = 32  
  }
)


local function onTimer( event )

    -- Create particle with water effect with starting position at (250,500)
    particleSystem:createParticle(
      {
         flags = "water",
         velocityX = 225,
         velocityY = 120,
         color = { 0, 0.3, 1, 1},
         x = 250,
         y = 500,
         lifetime = 32.0 -- Liftime of generated particles in seconds
      }
    )

    -- Create particle with water effect with starting position at (0,0)
    particleSystem:createParticle(
        {
           flags = "powder",
           velocityX = 225,
           velocityY = 120,
           color = { 1, 1, 1, 1},
           x = 0,
           y = 0,
           lifetime = 32.0 -- Liftime of generated particles in seconds
        }
      )
    end

timer.performWithDelay( 20, onTimer, 0 )